using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DL.Model;
using DL.Interfaces;
using BL.Common;

namespace BL
{
    public class CurrencyService
    {
        private static ICurrencyRepository _currencyrepository;

        public CurrencyService(ICurrencyRepository currencyrepository)
        {
            if (currencyrepository != null)
                _currencyrepository = currencyrepository;
        }

        public void AddCurrency(tbl_Currency_Master currency)
        {
            currency.CreatedDate = DateTime.Now;
            _currencyrepository.Insert(currency);
        }

        public void UpdateCurrency(tbl_Currency_Master currency)
        {
            currency.UpdatedDate = DateTime.Now;
            _currencyrepository.Update(currency);
        }

        public IList<tbl_Currency_Master> GetAllCurrencies()
        {
            return _currencyrepository.GetAll();
        }

        public tbl_Currency_Master GetCurrencyByID(int id)
        {
            return _currencyrepository.GetById(id);
        }

        public void UpdateWithFetchCurrency(int id, tbl_Currency_Master currency)
        {
            currency.UpdatedDate = DateTime.Now;
            _currencyrepository.UpdateWithFetch(id, currency);
        }

        public void DeleteCurrency(int id)
        {
            _currencyrepository.Delete(id);
        }

        public void DeleteCurrency(tbl_Currency_Master currency)
        {
            _currencyrepository.Delete(currency);
        }
    }
}
