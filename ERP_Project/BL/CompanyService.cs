using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DL.Model;
using DL.Interfaces;
using BL.Common;
using DL.Repositories;

namespace BL
{
    public class CompanyService
    {
        private static ICompanyRepository _companyrepository;
        private CurrencyService currencyservice;

        public CompanyService(ICompanyRepository companyrepository)
        {
            if (companyrepository != null)
                _companyrepository = companyrepository;
            currencyservice = new CurrencyService(new CurrencyRepository(new DL.SystemDataUnit(new Entities())));
        }

        public void AddCompany(tbl_Company_Master company)
        {
            company.CreatedDate = DateTime.Now;
            _companyrepository.Insert(company);
        }

        public void UpdateCompany(tbl_Company_Master company)
        {
            company.UpdatedDate = DateTime.Now;
            _companyrepository.Update(company);
        }

        public IList<tbl_Company_Master> GetAllCompanies()
        {
            return _companyrepository.GetAll().Where(x=>x.status==(int?)CommonVariable.Status.Active).ToList();
        }

        public tbl_Company_Master GetCompanyByID(int id)
        {
            return _companyrepository.GetById(id);
        }

        public void UpdateWithFetchCompany(int id, tbl_Company_Master company)
        {
            company.UpdatedDate = DateTime.Now;
            _companyrepository.UpdateWithFetch(id, company);
        }

        public void DeleteCompany(int id)
        {
            _companyrepository.Delete(id);
        }

        public void DeleteCompany(tbl_Company_Master company)
        {
            _companyrepository.Delete(company);
        }

        public IList<tbl_Currency_Master> CurrencyBindForDdl()
        {
            return currencyservice.GetAllCurrencies();
        }

        //public int GetIdByCompany(tbl_Company_Master company)
        //{
        //    return _companyrepository.GetAll().Where(x => x.cmpny_name == company.cmpny_code && x.cin == company.cin).Select(y=>y.cmpny_Id).FirstOrDefault();
        //}

    }
}
