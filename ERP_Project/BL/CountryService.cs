using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DL.Model;
using DL.Interfaces;
using BL.Common;

namespace BL
{
    public class CountryService
    {
        private static IContryRepository _countryrepository;

        public CountryService(IContryRepository countryrepository)
        {
            if (countryrepository != null)
                _countryrepository = countryrepository;
        }

        public void AddCountry(tbl_Country_Master country)
        {
            country.CreatedDate = DateTime.Now;
            _countryrepository.Insert(country);
        }

        public void UpdateCountry(tbl_Country_Master country)
        {
            country.UpdatedDate = DateTime.Now;
            _countryrepository.Update(country);
        }

        public IList<tbl_Country_Master> GetAllCountries()
        {
            return _countryrepository.GetAll();
        }

        public tbl_Country_Master GetCountryByID(int id)
        {
            return _countryrepository.GetById(id);
        }

        public void UpdateWithFetchCountry(int id, tbl_Country_Master country)
        {
            country.UpdatedDate = DateTime.Now;
            _countryrepository.UpdateWithFetch(id, country);
        }

        public void DeleteCountry(int id)
        {
            _countryrepository.Delete(id);
        }

        public void DeleteCountry(tbl_Country_Master country)
        {
            _countryrepository.Delete(country);
        }

        public IList<CountryComp> GetCountryForGrid()
        {
            int i = 0;
            List<CountryComp> lstCon = new List<CountryComp>();
            IList<tbl_Country_Master> lstCountry = GetAllCountries().Where(y => y.status == (int?)CommonVariable.Status.Active).OrderBy(x => x.cntry_name).ToList();
            foreach (tbl_Country_Master obCountryMaster in lstCountry)
            {
                CountryComp obCountryComp = new CountryComp();

                obCountryComp.sNo = ++i;
                obCountryComp.countryId = obCountryMaster.cntry_Id;
                obCountryComp.countryName = obCountryMaster.cntry_name;
                obCountryComp.noOfState = obCountryMaster.tbl_State_Master.Count;

                lstCon.Add(obCountryComp);
            }
            return lstCon;
        }

    }

}
